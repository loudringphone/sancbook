class DifferentValidator < ActiveModel::Validator
    def validate(record)
      if record.sender_id == record.receiver_id
        record.errors[:base] << "Sender_id and receiver_id cannot be the same"
      end
    end
end