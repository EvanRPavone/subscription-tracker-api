class SubcatSerializer
    def initialize(subcat_object)
        @subscription_category = subcat_object
    end

    def to_serialized_json
        options = {
            include: {
                subscription: {
                    only: [:name, :price, :paymentDate, :plan]
                },
                category: {
                    only: [:name]
                }
            },
            except: [:updated_at],
        }
        @subscription_category.to_json(options)
    end

end