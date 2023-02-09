class CopyPriceToLineItems < ActiveRecord::Migration[7.0]
  def up
    LineItem.all.each do |item|


      item.price = item.product.price
      item.save!

      # count the number of each product in the cart
      # sums = cart.line_items.group(:product_id).sum(:quantity)
      # sums.each do |product_id, quantity|
      #   if quantity > 1
      #     # remove individual items
      #     cart.line_items.where(product_id: product_id).delete_all

      #     # replace with a single item
      #     item = cart.line_items.build(product_id: product_id)
      #     item.quantity = quantity
      #     item.save!
      #   end
      # end
    end
  end
end
