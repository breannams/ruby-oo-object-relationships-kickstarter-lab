class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def projects
        ProjectBacker.all.select do |proj|
        proj.project == self
        end 
    end

    def backers
        projects.map do |proj|
            proj.backer
        end
    end
end