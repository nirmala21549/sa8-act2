class Quiz
    def initialize
      @questions = {
        math: "What is 1 + 2?",
        history: "Who was the president of United states?"
      }
      define_questions_methods
    end
  
    private
  
    def define_questions_methods
      @questions.each do |topic, question|
        self.class.send(:define_method, "question_about_#{topic}") do
          puts question
        end
      end
    end
  end
  
  quiz = Quiz.new
  quiz.question_about_math
  quiz.question_about_history
  