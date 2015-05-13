module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Buy a home and keep the commission.  LooT for your LooT"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
