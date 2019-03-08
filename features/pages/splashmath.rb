class SplashMath

  include PageObject

  page_url "#{FigNewton.base_url}"

  text_field(:search_bar, :class => ["gLFyf", "gsfi"])
  button(:google_search, :value => "Google Search")

end