
#for sampel
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
    # leadership = ['Skills', 'Motivating Others', 'Self Love', 'Adversity', 'Struggle', 'Reading', 'Other']
    # cognitive = ['Arts and Humanities', 'Physical Science and Engineering', 'Math and Logic',
    #         'Computer Science', 'Data Science', 'Economics and Finance', 'Business',
    #         'Social Sciences', 'Language', 'Other']
    program_tags = ['leadership', 'cognitive', 'parenting', 'communication']
    # mindful = ['communication', 'worry']
    program_tags.each do |name|
      Category.create(branch: 'tag', name: name)
    end
  
    # cognitive.each do |name|
    #   Category.create(branch: 'cognitive', name: name)
    # end
  
    # parenting.each do |name|
    #   Category.create(branch: 'parenting', name: name)
    # end
  end
  
  def seed_programs
    # categories = Category.all
  
    # categories.each do |category|
    #     Program.create(
    #       name: category.name,
    #       description: 'This program has been developed to engage users with '{category.name}, 
    #       user_id: rand(1..9), 
    #       category_id: category.id
    #     )
      Program.create(
        name: 'Leadership Development', 
        description: 'The leadership development program cannot', 
        user_id: 1, 
        category_id: 1
      )
      Program.create(
        name: 'New Parenting', 
        description: 'The leadership development program hasnt', 
        user_id: 2, 
        category_id: 2
      )
      Program.create(
        name: 'Cognitive Behavioral Therapy', 
        description: 'The leadership development program will', 
        user_id: 3, 
        category_id: 3
        )
      Program.create(
        name: 'Mindful Communication', 
        description: 'The leadership development program will', 
        user_id: 4, 
        category_id: 4
      )
  
end

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

  def seed_sections
    #This below will seed many generic generated sections, for the purpose of the exercise

    # programs = Program.all
    # programs.each do |program|
    #       Section.create(
    #             name: 'Part One',
    #             description: 'Mindfulness',
    #             user_id: program.id,
    #             program_id: program.id,
    #             # :image_file_name => seed_image('mindfulness')
    #       )
    # end 

    #Leadership Sections

    Section.create(
      name: 'Start Here!',
      description: 'In this program, you will learn about ...',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'adsfadsf',
      description: 'adfasdfad',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'asdfasdf',
      description: 'asdfadf',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'adsfadsf',
      description: 'asdfadf',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'asdfadsf',
      description: 'asdfasdfadf',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'asdfdaf',
      description: 'this description...',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'asdfjk',
      description: 'asdfaf',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'asdfadf',
      description: 'adfadsf',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'adfadsf',
      description: 'asfadf',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: '',
      description: '',
      user_id: 1,
      program_id: 1
    )

    #New Parenting Sections
    Section.create(
      name: 'Start Here: New Parenting Program- Child development',
      description: 'This section will review the ways',
      user_id: 2,
      program_id: 2
    )
    Section.create(
      name: '  ',
      description: '',
      user_id: 2,
      program_id: 2
    )
    Section.create(
      name: '',
      description:'',
      user_id: 2,
      program_id: 2
    )
    Section.create(
      name: 'name',
      description: 'des',
      user_id: 2,
      program_id: 2
    )

    #Cognitive Behavioral Therapy Section
    Section.create(
      name: 'description',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'description',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'description',
      description: 'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'description',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'description',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'description',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'description',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'description',
      description:'description',
      user_id: 3,
      program_id: 3
    )

    #Mindful Communication
    Section.create(
      name: 'Communicating with your partners',
      description: 'description',
      user_id: 4,
      program_id: 4
    )
    Section.create(
      name: 'Finding solace in yourself',
      description:'description',
      user_id: 4,
      program_id: 4
    )
    Section.create(
      name: 'Being open with yourself',
      description:'description',
      user_id: 4,
      program_id: 4
    )
    Section.create(
      name: 'Understanding risks',
      description:'description',
      user_id: 4,
      program_id: 4
    )

end

  
seed_users
seed_categories
seed_programs
seed_sections
