if Rails.env == 'production'
  Rails.configuration.stripe = {
    :publishable_key => 'sk_live_ucprFzp3IHrPXm2OyRUW1aPH',
    :secret_key      => 'pk_live_4dXVBVZs5iqoBPFcoNremjOl'
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_xB3ShcdiMuEP5zU9Y3LH26EB',
    :secret_key      => 'sk_test_Seqy9IOrHa7rAVsPI60Za7Ae'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]