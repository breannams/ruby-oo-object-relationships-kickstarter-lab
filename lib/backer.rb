class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project
        ProjectBacker.all.select do |proj|
            proj.backer == self
        end
    end

    def backed_projects
        project.map do |proj|
        proj.project
        end
    end
end