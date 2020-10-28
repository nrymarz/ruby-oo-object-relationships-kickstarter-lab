class Backer
    def initialize(name)
        @name = name
    end
    attr_reader :name
    def back_project(project)
        ProjectBacker.new(project,self)
    end
    def backed_projects
        project_backers = ProjectBacker.all.select {|project| project.backer == self}
        project_backers.collect{|project| project.project}
    end

end