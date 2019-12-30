# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# programs = [{:name => 'Leadership'}]

# programs.each do |program|
#   Program.create!(program)
# end
def seed_users
    user_id = 0
    10.times do 
      User.create(
        # name: "test#{user_id}",
        email: "test#{user_id}@test.com",
        password: '123456',
        password_confirmation: '123456'
      )
      user_id = user_id + 1
    end
  end
  
  
  def seed_categories
    leadership = ['Arts', 'Crafts', 'Sports', 'Sciences', 'Collecting', 'Reading', 'Other']
    cognitive = ['Arts and Humanities', 'Physical Science and Engineering', 'Math and Logic',
            'Computer Science', 'Data Science', 'Economics and Finance', 'Business',
            'Social Sciences', 'Language', 'Other']
    parenting = ['Study', 'Development', 'Arts and Hobby', 'Other']
  
    leadership.each do |name|
      Category.create(branch: 'leadership', name: name)
    end
  
    cognitive.each do |name|
      Category.create(branch: 'cognitive', name: name)
    end
  
    parenting.each do |name|
      Category.create(branch: 'parenting', name: name)
    end
  end
  
  def seed_programs
    categories = Category.all
  
    categories.each do |category|
      5.times do
        Program.create(
          name: 'Leadership Development Program', 
          description: 'The leadership development program has', 
          user_id: rand(1..9), 
          category_id: category.id
        )
        Program.create(
            name: 'Leadership Development Program', 
            description: 'The leadership development program cannot', 
            user_id: rand(1..9), 
            category_id: category.id
          )
        Program.create(
        name: 'Leadership Development Program', 
        description: 'The leadership development program hasnt', 
        user_id: rand(1..9), 
        category_id: category.id
        )
        Program.create(
            name: 'Leadership Development Program', 
            description: 'The leadership development program will', 
            user_id: rand(1..9), 
            category_id: category.id
          )
      end
    end
end

  def seed_sections
    programs = Program.all
    programs.each do |program|
        5.times do
            Section.create(
                name: 'Part One',
                description: 'Mindfulness',
                user_id: program.id,
                program_id: program.id
            )
        end
    end 
end

  
seed_users
seed_categories
seed_programs
seed_sections