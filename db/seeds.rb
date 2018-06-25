require 'faker'


# Message Types
MessageType.create({android_code: 0, name: 'all', android_column_name: ''})
MessageType.create({android_code: 1, name: 'inbox', android_column_name: 'inbox'})
MessageType.create({android_code: 2, name: 'sent', android_column_name: 'sent'})
MessageType.create({android_code: 3, name: 'draft', android_column_name: 'draft'})
MessageType.create({android_code: 4, name: 'outbox', android_column_name: 'outbox'})
MessageType.create({android_code: 5, name: 'failed', android_column_name: 'failed'})
MessageType.create({android_code: 6, name: 'queued', android_column_name: 'queued'})

# Message Delivery Statuses
DeliveryStatus.create({android_code: 0, status: 'complete'})
DeliveryStatus.create({android_code: 1, status: 'none'})
DeliveryStatus.create({android_code: 32, status: 'pending'})
DeliveryStatus.create({android_code: 64, status: 'failed'})

# Messages
20.times do
  Message.create({
                     sender_address: Faker::PhoneNumber.phone_number,
                     body: Faker::Lorem.paragraph,
                     received_at: DateTime.now + Random.rand(999),
                     message_type: 1,
                     is_read: Random.rand(1),
                     status: 0
                 })
end