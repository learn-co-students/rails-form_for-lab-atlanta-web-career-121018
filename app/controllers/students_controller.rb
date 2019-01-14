class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def show
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find(params[:id]) #looks up article to display filled in data
        # render :edit
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end


    private
    def student_params
        # student_params(*args)
        # params.permit(*args)
        # params.permit(:first_name, :last_name)
        params.require(:student).permit(:first_name, :last_name)

    end

end


# Prefix Verb           URI Pattern                                 Controller#Action
# students              GET    /students(.:format)                  students#index
#                       POST   /students(.:format)                  students#create
# new_student           GET    /students/new(.:format)              students#new
# edit_student          GET    /students/:id/edit(.:format)         students#edit
# student               GET    /students/:id(.:format)              students#show
#                       PATCH  /students/:id(.:format)              students#update
#                       PUT    /students/:id(.:format)              students#update
#                       DELETE /students/:id(.:format)              students#destroy
# school_classes        GET    /school_classes(.:format)            school_classes#index
#                       POST   /school_classes(.:format)            school_classes#create
# new_school_class      GET    /school_classes/new(.:format)        school_classes#new
# edit_school_class     GET    /school_classes/:id/edit(.:format)   school_classes#edit
# school_class          GET    /school_classes/:id(.:format)        school_classes#show
#                       PATCH  /school_classes/:id(.:format)        school_classes#update
#                       PUT    /school_classes/:id(.:format)        school_classes#update
#                       DELETE /school_classes/:id(.:format)        school_classes#destroy
