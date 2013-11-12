json.array!(@submissions) do |submission|
  json.extract! submission, :link, :title, :votes
  json.url submission_url(submission, format: :json)
end
