RSpec::Matchers.define :know do |*languages|
  match do |developer|
    known_languages = developer.language.split(", ")
    languages.all? { |language| known_languages.include? language }
  end
end