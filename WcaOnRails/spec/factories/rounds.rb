# frozen_string_literal: true

FactoryBot.define do
  factory :round do
    transient do
      competition { FactoryBot.create :competition, event_ids: [event_id] }
      event_id "333"
      format_id "a"
    end

    format { Format.c_find(format_id) }
    competition_event { competition.competition_events.find_by_event_id!(event_id) }
    number 1
  end
end
