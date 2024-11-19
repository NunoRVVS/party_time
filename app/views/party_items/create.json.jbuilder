if @new_item.persisted?
  json.form render(partial: "party_items/form", formats: :html, locals: {monument: PartyItem.new})
  json.inserted_item render(partial: "party_items/form", formats: :html, locals: {monument: @new_item})
else
  json.form render(partial: "party_items/form", formats: :html, locals: {monument: @new_item})
end
