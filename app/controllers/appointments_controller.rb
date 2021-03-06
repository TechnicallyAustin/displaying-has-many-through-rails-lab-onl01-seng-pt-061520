class AppointmentsController < ApplicationController
    def index 
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new 
    end

    def create 
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end

    end

    def edit
    end

    def update
    end

    private

    def appointment_params
        params.require(:appointment).permit(:doctor, :patient)
    end
    
end

