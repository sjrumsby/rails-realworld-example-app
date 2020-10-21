json.segments do |json|
  json.array! @segments, partial: 'segments/segment', as: :segment
end

json.segments_count @segments_count
