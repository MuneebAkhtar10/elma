# frozen_string_literal: true

namespace :subscription_plans do
  task create_subscriptions: :environment do
    if SubscriptionPlan.create(name: 'training', price: 0)
      puts "Training plan created"
    end
    if SubscriptionPlan.create(name: 'start', price: 38)
      puts "Start plan created"
    end
    if SubscriptionPlan.create(name: 'premium', price: 64)
      puts "Premium plan created"
    end
  end
  task create_subscription_plan_features: :environment do
    free = ['38$ 350 MAD(MA) 21900 XOF (SN)', 'Gestion des RDV', 'Base de donnée clients', 'Gestion des employés',
            'Statistique des rendez-vous', 'Caisse','100 Sms de campagne
            (inclus)','Suivi à distance']

    premium = ['64$ 600 MAD(MA) 37000 XOF (SN)', 'Gestion des RDV', 'Base de donnée clients', 'Gestion des employés',
            'Statistique des rendez-vous', 'Caisse','100 Sms de campagne
            (inclus)','Gestion des packs & forfaits','Carte cadeaux','Promotion des services',
              'Campagne sms','Gestion des produits & stock','Suivi à distance & assistance technique']
    SubscriptionPlan.all.each do |plan|
      if plan.name == 'start'
        free.each do |feature|
          SubscriptionPlanFeature.create(name: feature, subscription_plan: plan)
          puts 'Free feature added'
        end
      elsif plan.name == 'premium'
        premium.each do |feature|
          SubscriptionPlanFeature.create(name: feature, subscription_plan: plan)
          puts 'Premium feature added'
        end
      elsif plan.name == 'training'
          SubscriptionPlanFeature.create(name: '2 days free training', subscription_plan: plan)
          puts 'Training plan added'
      end
    end
  end
  task assign_subscriptions: :environment do
    salons = Saloon.where(subscription_plan: nil)
    salons.each do |salon|
      salon.update(subscription_plan: SubscriptionPlan.second)
      puts 'subscription plan assigned'
    end
  end
end
