class App
  def run
    show_menu
  end
  
  def show_menu
    @menu ||= Menu.new.show
  end
end