module Admin
  class DashboardController < AdminController

    def index

      @page_title = "Dashboard"

      @page_description =
        "Manage every section of your portfolio."

      @page_action_text = "View Portfolio"

      @page_action_path = root_path

    end

  end
end