namespace :category do
    desc "Generate Default Categories"

    task :generate_default => :environment do

      ["Funny", "Sports", "Technology", "Entertainment", "Travel", "Photography", "Food",
       "Cars", "Programming", "Designs", "Investing", "Real Estate"].each do |cat_name|
        Category.create(name:cat_name)
      end
    end

  end

