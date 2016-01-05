json.array!(@put_repertories) do |put_repertory|
  json.extract! put_repertory, :id, :order_num, :project_class, :sum, :total_price, :express_num, :arrival_date, :discount, :discount_price, :remarks, :part_id
  json.url put_repertory_url(put_repertory, format: :json)
end
