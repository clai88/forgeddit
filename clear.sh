#!/bin/bash

rake db:rollback
rake db:rollback
rake db:rollback
rake db:rollback
rake db:rollback

rake db:migrate

bin/rails s


