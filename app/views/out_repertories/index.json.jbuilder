json.array!(@out_repertories) do |out_repertory|
  json.extract! out_repertory, :id, :get_at, :get_by, :desc, :pay_money, :sum_price, :real_price
  json.url out_repertory_url(out_repertory, format: :json)
end
