class PresencesPdf < Prawn::Document
	def initialize(presences)
		super()
		@presences = presences
		presence
		my_presences
	end

	def presence
		text "My Presences"
		
	end
	
	def my_presences
		move_down 20
		table presences_rows do 
			row(0).font_style = :bold
			columns(1..2).align = :right
			self.row_colors = ["DDDDDD", "FFFFFF"]
			self.header = true
		end
	end

	def presences_rows
		[["Checkin", "Checkout"]] +
		@presences.map do |presence|
			[presence.checkin.to_s, presence.checkout.to_s]
		end
	end
	
end