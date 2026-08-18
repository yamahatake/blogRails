class EnablePgcryptoExtension < ActiveRecord::Migration[8.1]
  def change
    # Enables the gen_random_uuid() function in PostgreSQL
    enable_extension 'pgcrypto'
  end
end
