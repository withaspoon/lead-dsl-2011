!SLIDE

    @@@ruby
    puts "Hello, World!"

!SLIDE

    @@@ruby
    course = "Lead Developer"
    puts "Hello, #{course}"

!SLIDE

    @@@ruby
    "Lead Developer".length # returns 14
    1.2.floor               # returns 1
    [1, 2].empty?           # returns false
    {:a => 1, :b => 2}.keys # returns [:a]

!SLIDE

    @@@ruby
    [:a, :b].include? :b # returns true

!SLIDE

    @@@ruby
    title = "Lead Developer"
    
    title.upcase # returns "LEAD DEVELOPER"
    puts title # prints "Lead Developer"
    
    title.upcase! # returns "LEAD DEVELOPER"
    puts title # prints "LEAD DEVELOPER"

!SLIDE

    @@@ruby
    # returns [1, 4, 9]
    [1, 2, 3].map { |v| v * v }
    
    # prints "counting" 5 times
    5.times {
      puts "counting"
    }

!SLIDE

    @@@ruby
    # returns [1, 4, 9]
    [1, 2, 3].map do |v| v * v end
    
    # prints "counting" 5 times
    5.times do
      puts "counting"
    end

!SLIDE

    @@@ruby
    class Developer
    end
    
    developer = Developer.new

!SLIDE

    @@@ruby
    class Developer
      attr_reader :language
      def initialize(language)
        @language = language
      end
    end

    developer = Developer.new("Java")
    developer.language # returns "Java"

!SLIDE

    @@@ruby
    class Developer
      attr_reader :company, :language
      def initialize(params={})
        @company, @language =
          params[:company], params[:language]
      end
    end
    
    developer = Developer.new(
      :language => "Java",
      :company => "Oracle"
    )
    developer.company # returns "Oracle"

!SLIDE
    
    @@@ruby
    class LeadDeveloper < Developer
    end

!SLIDE

    @@@ruby
    module Learnable
      def learn(language)
        @language << ", #{language}"
      end
    end
    
    class LeadDeveloper < Developer
      include Learnable # mixin
    end

!SLIDE

    @@@ruby
    developer = LeadDeveloper.new(
      :language => "Java"
    )

    developer.learn "Ruby"
    developer.language # returns "Java, Ruby"