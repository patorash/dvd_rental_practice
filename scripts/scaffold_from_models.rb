require 'optparse'

argv = ARGV.dup
if argv.include? "--"
  argv.delete "--"
end

op = OptionParser.new
opts = {
    destroy: false
}

op.on('-d', '--destroy', "destroy scaffold files (defalt: #{opts[:destroy]})") do |v|
  opts[:destroy] = v
end

begin
  op.parse!(argv)
rescue OptionParser::InvalidOption => e
  usage e.message
end

if opts[:destroy]
  models_path = Rails.root.join('app', 'models', '*')
  Dir.glob(models_path).each do |model_file_path|
    next if File.basename(model_file_path) == 'application_record.rb'
    next if File.directory? model_file_path
    FileUtils.copy model_file_path, "#{model_file_path}.org"
  end
  ApplicationRecord.all_models.each do |model|
    next if model.primary_key.nil?
    command = "bin/rails d scaffold #{model.table_name.singularize} --no-migration --no-assets --no-helper --skip"
    system command
  end
  Dir.glob(models_path).each do |model_file_path|
    next if File.basename(model_file_path) == 'application_record.rb'
    next if File.directory? model_file_path
    model_file_path.slice!('.org')
    FileUtils.copy "#{model_file_path}.org", model_file_path
  end
  FileUtils.rm(Dir.glob("#{models_path}.org"), force: true)
else
  ApplicationRecord.all_models.each do |model|
    next if model.primary_key.nil?
    attribute_types = model.attribute_types.except(model.primary_key).map do |k,v|
      if k.end_with? '_id'
        attr = k.dup
        attr.slice!('_id')
        "#{attr}:references"
      else
        "#{k}:#{v.type.to_s}"
      end
    end
    command = "bin/rails g scaffold #{model.table_name.singularize} #{attribute_types.join(' ')}  --no-migration --no-assets --no-helper --skip"
    system command
  end
  system 'bundle exec annotate' if Object.const_defined?('Annotate')
end

