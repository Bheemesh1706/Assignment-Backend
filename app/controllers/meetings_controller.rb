class MeetingsController < ApplicationController
    before_action :set_meeting, only: [:show, :update, :destroy]

        def create
            @meeting = Meeting.new(meeting_params)


            if @meeting.save
                render json: {success_message: "Meeting Created Sucessfully"}, status: 200
            else
                render json:  @meeting.errors.full_messages, status: 420
            end
        end

        def index
            @agencies = meeting.all
        
            render json: @agencies
        end

        def show
            render json: @meeting
        end

        def delete
            destory @meeting
        end

        def update
            if @meeting.update(meeting_params)
              render json: {success_message: "Meeting Updated"}, status: 200
            else
              render json: @meeting.errors.full_messages, status: 420
            end
        end
        


        private

            def meeting_params
                params.require(:meeting).permit(:Title,:Description,:Start,:End)
            end

            def set_meeting
                @meeting = meeting.find(params[:Title])
            end
        
    end
    
end
