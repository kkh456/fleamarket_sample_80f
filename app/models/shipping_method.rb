class ShippingMethod < ActiveHash::Base
  self.data = [
    {id: 1, name: '未定'}, {id: 2, name: 'ゆうメール'}, {id: 3, name: 'レターパック'}, {id: 4, name: '普通郵便'}, {id: 5, name: 'クロネコヤマト'}, {id: 6, name: 'ゆうパック'}
  ]
end