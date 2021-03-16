class StaticPagesController < ApplicationController
  def home
  end

  def glossary
    ## https://stackoverflow.com/questions/11149430/how-to-serve-a-static-json-file-in-rails
    ## https://stackoverflow.com/questions/1826727/how-do-i-parse-json-with-ruby-on-rails
    @data = File.read("#{Rails.root}/public/glossary.json");
    @glossary_sheet = JSON.parse(@data);
    @links = {'1'=> what_is_cel_path, 
      '2'=> community_partnerships_path,
      '3'=> course_design_path,
      '4'=> implementation_path,
      '5'=> assessment_path,
      '6'=> professional_dev_path
    }
  end

  def faq
  end

  def about
  end

  def what_is_cel
  end

  def community_partnerships
  end

  def course_design
  end

  def implementation
  end

  def assessment
  end

  def professional_dev
  end
  
  def partners
  end
  
  def syllabi
  end
end
