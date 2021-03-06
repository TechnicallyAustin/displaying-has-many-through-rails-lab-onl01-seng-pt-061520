class DoctorsController < ApplicationController
    class PatientsController < ApplicationController
        def index
            @doctors = Doctor.all 
        end
    
        def show 
            @doctor = Doctor.find(params[:id])
        end
    
        def new
            @doctor = Doctor.new
        end
    
        def create 
            @doctor = Doctor.new(doctor_params)
            if @doctor.save
                redirect_to doctor_path(@doctor)
            else
                render :new
            end
        end
    
        def edit
        end
    
        def update
        end
    
        private
    
        def patient_params
            params.require(:doctor).permit(:name, :department)
        end
        
    end
    
end
