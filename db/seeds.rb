
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
    #Below code can generate many programs
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
        description: 'The leadership development program will go over activities that improve the skills, abilities and confidence of leaders', 
        user_id: 1, 
        category_id: 1
      )
      Program.create(
        name: 'New Parenting Program', 
        description: 'This program will help new parentings ease the transition, and learning how to manage this transitions', 
        user_id: 2, 
        category_id: 2
      )
      Program.create(
        name: 'Cognitive Behavioral Therapy', 
        description: ' CBT focuses on challenging and changing unhelpful cognitive distortions and behaviors, improving emotional regulation, and the development of personal coping strategies that target solving current problem', 
        user_id: 3, 
        category_id: 3
        )
      Program.create(
        name: 'Mindful Communication', 
        description: 'Mindful listening means looking the person youre talking to in the eyes, observing their body language, and patiently waiting until theyre finished speaking to respond. Knowing how to listen well allows the people you are talking to feel comfortable around you, making them more receptive to what you have to say', 
        user_id: 4, 
        category_id: 4
      )
  
end

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

  def seed_sections
    #This below will seed many generic generated sections, for the purpose of the exercise, I seeded each one individually. 

    # programs = Program.all
    # programs.each do |program|
    #       Section.create(
    #             name: 'Part One',
    #             description: 'Mindfulness',
    #             user_id: program.id,
    #             program_id: program.id,
    #             # :image_file_name => seed_image('mindfulness')
    #       )-\
    # end 

    #Leadership Sections

    Section.create(
      name: 'Leadership Program Start Here',
      description: 'In this program, you will learn ways to bridge the gap between senior management & the front line, lead  across organizational or geographical boundaries, learn the art of collaboration.solve complicated problems & take wise action in complex, rapidly changing conditions,
      manage stress, build resiliency & leverage multiple life roles, and build a  network of supportive leaders to continue development.',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'People Management',
      description: 'Cognitive behavioral therapy aims to change our thought patterns, our conscious and unconscious beliefs, our attitudes, and, ultimately, our behavior, in order to help us face difficulties and achieve our goals.
      Psychiatrist Aaron Beck was the first to practice cognitive behavioral therapy. Like most mental health professionals at the time, Beck was a psychoanalysis practitioner.
      While practicing psychoanalysis, Beck noticed the prevalence of internal dialogue in his clients and realized how strong the link between thoughts and feelings can be. He altered the therapy he practiced in order to help his clients identify, understand, and deal with the automatic, emotion-filled thoughts that regularly arose in his clients.',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'Task Management',
      description: 'description here',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'Respect',
      description: 'description here',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'Coaching',
      description: 'Coaching is one of the best methods leaders can leverage to unleash the full potential of their direct reports. Coachable moments happen every day, and a leader with strong coaching skills can seize these moments and turn them into valuable learning experiences. According to Gallup research, only three in 10 employees “strongly agree there is someone at work who encourages their development.” This skill can go a long way in positively influencing employee engagement and productivity. Gone are the days of vague yearly reviews; employees today want feedback, motivation and guidance in real time, and leaders must be able to effectively provide those things.',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'Accountability',
      description: 'The most successful leaders know that their success hinges more on their team’s performance than their own. Leaders are no longer individual contributors and will be not be assessed that way. They are held accountable for others’ actions and results, as well as their own, and must take accountability for team outcomes – the good and the bad. By training leaders on this important distinction, you can ensure that they will be capable of defining accountabilities and rigorously holding direct reports to those commitments, so that everyone can succeed and produce the results they need.

      ',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'Change Management',
      description: 'An organization is not a static entity that can be frozen in time. Changes in the marketplace, employee turnover, company growth and countless other factors contribute to ongoing changes. Whether the changes feel like a ripple or a tidal wave to employees, leaders must be prepared to shepherd them through the changes, which requires training leaders to manage change before it ever even happens. Change management training should be part of any leadership development program to ensure that leaders can harness the power of vision, provide strong leadership during any season and capitalize on the transitional times to improve performance.',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: ' Influence and Negotiation',
      description: 'Effective leaders don’t command with authority; they inspire, persuade and encourage others to make their vision a reality. By learning how to be strong influencers and fair negotiators, leaders will return to their roles knowing that it is not about who has the most power but about who has the best influence on employees to achieve results. Rather than demanding that employees do something because of authority or hierarchy, leaders will use this subtle quality to build relationships, align priorities, and find a win-win that ultimately leads to completed projects and delivered results.',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'Helping Others',
      description: 'Effective leaders don’t command with authority; they inspire, persuade and encourage others to make their vision a reality. By learning how to be strong influencers and fair negotiators, leaders will return to their roles knowing that it is not about who has the most power but about who has the best influence on employees to achieve results. Rather than demanding that employees do something because of authority or hierarchy, leaders will use this subtle quality to build relationships, align priorities, and find a win-win that ultimately leads to completed projects and delivered results.',
      user_id: 1,
      program_id: 1
    )
    Section.create(
      name: 'End',
      description: 'Please Proceed to the Next Program: New Parenting',
      user_id: 1,
      program_id: 1
    )

    #New Parenting Sections
    Section.create(
      name: 'Start Here: New Parenting Program- Child development',
      description: 'This section will review the ways build strong, healthy 
      bonds with their infants and toddlers that will lay the foundation for their social and emotional development',
      user_id: 2,
      program_id: 2
    )
    Section.create(
      name: 'Why?',
      description: 'As more people delay having children, their childbearing and child-rearing years increasingly overlap with their prime working years. This has implications for employers seeking to attract and retain the talent they need. With 7.3 million job openings in an economy with only 6.54 million unemployed workers, according to the U.S. Bureau of Labor Statistics, employers seeking employees with specific skills and experience are likely to have an even greater challenge replacing those who leave.
      Turnover in general is costly. Turnover among an organizations most important contributors is even more so.',
      user_id: 2,
      program_id: 2
    )
    Section.create(
      name: 'Creating Healthy Habits',
      description:' Parents shared many challenges they were experiencing while striving to do their best at work while, at the same time handling many new emotional and physical joys and stresses that come with the arrival of any new baby.',
      user_id: 2,
      program_id: 2
    )
    Section.create(
      name: 'Emotional Stress',
      description: 'Helping suport working parents should be a primary goal for employers. ',
      user_id: 2,
      program_id: 2
    )

    #Cognitive Behavioral Therapy Section
    Section.create(
      name: 'Start Cognitive Behavioral Therapy Section',
      description:'Cognitive behavioral therapy aims to change our thought patterns,
      our conscious and unconscious beliefs, our attitudes, and, ultimately, 
      our behavior, in order to help us face difficulties and achieve our goals.',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'What is CBT?',
      description: 'Cognitive behavioral therapy aims to change our thought patterns, our conscious and unconscious beliefs, our attitudes, and, ultimately, our behavior, in order to help us face difficulties and achieve our goals.
      Psychiatrist Aaron Beck was the first to practice cognitive behavioral therapy. Like most mental health professionals at the time, Beck was a psychoanalysis practitioner.
      While practicing psychoanalysis, Beck noticed the prevalence of internal dialogue in his clients and realized how strong the link between thoughts and feelings can be. He altered the therapy he practiced in order to help his clients identify, understand, and deal with the automatic, emotion-filled thoughts that regularly arose in his clients.',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'Cognitive Distortions',
      description: 'Many of the most popular and effective cognitive behavioral therapy techniques are applied to what psychologists call “cognitive distortions,” inaccurate thoughts that reinforce negative thought patterns or emotions (Grohol, 2016).
      There are 15 main cognitive distortions that can plague even the most balanced thinkers.',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'More',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'More',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'More',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'More',
      description:'description',
      user_id: 3,
      program_id: 3
    )
    Section.create(
      name: 'More',
      description:'description',
      user_id: 3,
      program_id: 3
    )

    #Mindful Communication
    Section.create(
      name: 'Start: Mindful Communication',
      description: 'Communication training is often a cornerstone of leadership development, but how effective and up-to-date is it? What format does it take? Communication is not a skill that leaders can learn by just reading, watching a video or listening to a presentation about it. In a leadership role, communication happens at all hours of the day through large presentations, one-on-one conversations, phone calls, text messages, videoconferencing and, of course, emails. Although it’s not a new skill to leadership development, communication is one that needs to be optimized in order to be fully relevant and useful to the leaders of today and tomorrow.
      ',
      user_id: 4,
      program_id: 4
    )
    Section.create(
      name: 'About',
      description:' When you are truly present in this moment with curiosity, kindness, and compassion, you listen with an open, nonjudgmental heart to the other person. You speak skillfully, generally avoiding lying, harsh language, gossip, divisive speech.',
      user_id: 4,
      program_id: 4
    )
    Section.create(
      name: 'More...',
      description:'Why Mindful Communication is Vital to Success. ... Whether youre looking to excel in your career or improve your personal relationships, mindful communication can do a lot to improve your life. To put it simply, this means making a commitment to positively communicating with those around you by: Listen without distraction ...',
      user_id: 4,
      program_id: 4
    )
    Section.create(
      name: 'More...',
      description:'Congrats! This is the last section!',
      user_id: 4,
      program_id: 4
    )

end

  
seed_users
seed_categories
seed_programs
seed_sections
