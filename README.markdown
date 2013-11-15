Advanced Calculators
==========================
IN PROGRESS

**Supports Spree 2-0-stable**

Adapted from code by _Michael Lang_ by _Marcin Raczkowski_.

old version that works with 0.8 code can be found at https://github.com/swistak/spree-advanced-calculators

Advanced Calculators allow you to define shipping costs based on shipping method
and ranges of parameters from line items.

Each advanced calculator contains the following values:

1. **Calculator:** Each Rate is associated with a _Calculator_, which is used to calculate charges.

2. **Floor:** This is the lower bound for rate.  The value _is not_ included.

3. **Ceiling:** This is the upper bound for rate. This value _is_ inclusive.

4. **Shipping Rate:** Is the shipping charge to apply to the order for
 order's that fall within the range set by Floor and Ceiling.

Quick Start
===========
1. Add the following to your gemfile and bundle install:

    `gem 'spree-advanced-calculators'`

2. Migrate the database (or bootstrap if you want the sample data for testing)

    `rake db:migrate`
