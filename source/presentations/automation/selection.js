import Controller from '@ember/controller';
import EmberObject, { computed } from '@ember/object';
import { task } from 'ember-concurrency';
import RequestHelpersMixin from '../../../mixins/request-helpers';

export default Controller.extend(RequestHelpersMixin, {
  queryParams:           ['risk', 'goal'],
  confirmInvestmentRisk: null,
  confirmStrategyChange: null,

  actions: {
    confirmation(selection) {
      this.toggleProperty(selection);
    },
  },

  disabled: computed('confirmStrategyChange', 'confirmInvestmentRisk', function() {
    return !this.get('confirmStrategyChange') && !this.get('confirmInvestmentRisk');
  }),

  // Insert your async task here
    
});
