def home
  @home || HomePage.new(self)
end

def main
	@main || MainPage.new(self)
end












