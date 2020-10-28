class Project
    def initialize(title)
        @title = title
    end
    attr_reader :title
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def backers
        project_backers = ProjectBacker.all.select {|projectbacker| projectbacker.project == self}
        project_backers.collect {|backer| backer.backer}
    end
end