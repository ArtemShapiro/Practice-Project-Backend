json.array! @seasonal_allergies do |allergy|
    json.id allergy.id
    json.name allergy.name
    json.beginDate allergy.begin_at
    json.endDate allergy.end_at
end
