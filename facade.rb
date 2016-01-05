# Facade design pattern - provide a unified interface for a subset of related interfaces

class CampusRecruitment
  def self.should_hire?
    hire = true

    if !Student.has_transcripts?
      hire = false
    elsif !University.has_graduated?
      hire = false
    elsif !CommunityCenter.has_volunteer_hours_logged?
      hire = false
    end

    hire
  end
end

class Student
  def self.has_transcripts?
    true
  end
end

class University
  def self.has_graduated?
    true
  end
end

class CommunityCenter
  def self.has_volunteer_hours_logged?
    true
  end
end

puts CampusRecruitment.should_hire? ? "Yes, they meet all the qualifications" : "No, they do not meet all the qualifications"
