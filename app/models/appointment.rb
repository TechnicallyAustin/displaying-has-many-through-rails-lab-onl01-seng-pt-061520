class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient 

    def patient_name
        self.patient.name
    end

    def doctor_name
        self.doctor.name
    end

    def clear_date
        #method to convert Datetime into Month_name, Day, Year and current time
        self.appointment_datetime.strftime('%B %d, %Y at %H:%M')

    end

end
