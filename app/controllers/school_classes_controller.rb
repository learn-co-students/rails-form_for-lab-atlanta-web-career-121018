class SchoolClassesController < ApplicationController

    def new
        @school_class = SchoolClass.new
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find(params[:id]) #looks up article to display filled in data
        # render :edit
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end


    private
    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
        # params.permit(:title, :room_number)
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
