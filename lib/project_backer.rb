class ProjectBacker
    @@all = []
    def initialize(project,backer)
        @backer = backer
        @project = project
        @@all << self
    end
    attr_reader :project, :backer
    def self.all
        @@all
    end
end