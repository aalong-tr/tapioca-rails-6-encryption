# Bug Reproduction: `uninitialized constant ActiveRecord::Encryption` on Rails 6.1

This directory contains a minimally modified Rails 6.1 application with a single trivial model class. On the initial commit, `srb tc` passes. On the subsequent commit, which adds a trivial model, attempting to run `tapioca dsl` fails with the error:

```
bundler: failed to load command: tapioca (/Users/drew/.rbenv/versions/3.1.4/bin/tapioca)
/Users/drew/.rbenv/versions/3.1.4/lib/ruby/gems/3.1.0/gems/tapioca-0.14.3/lib/tapioca/dsl/helpers/active_record_column_type_helper.rb:72:in `type_for_activerecord_value': NameError: uninitialized constant ActiveRecord::Encryption (Parallel::UndumpableException)

          when ActiveRecord::Encryption::EncryptedAttributeType
                           ^^^^^^^^^^^^
Did you mean?  Exception
```
