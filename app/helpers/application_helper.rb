module ApplicationHelper

  def table_of_contents(menus)
    content_tag :ul do
      menus.map do |menu|
        if menu.end_with? '?'
          content_tag :li do
            concat(link_to menu, "##{menu.gsub(/\?/, '')}")
          end
        else
          content_tag :li do
            concat(link_to menu, "##{menu}")
          end
        end
      end.inject(:+)
    end
  end

end
