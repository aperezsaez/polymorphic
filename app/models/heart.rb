class Heart < ApplicationRecord
    has_one :person, dependent: :destroy
    has_one :animal, dependent: :destroy

    def owner
        self.owner ||= person || animal
    end

end
