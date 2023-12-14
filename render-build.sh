# exit on error
set -o errexit

bundle install
bundle exec rails db:migrate

#if you have seeds to run add:
# bundle exec rails db:seed
