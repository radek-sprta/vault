/**
 * Copyright (c) HashiCorp, Inc.
 * SPDX-License-Identifier: BUSL-1.1
 */

import Route from '@ember/routing/route';
import { service } from '@ember/service';
import { DEBUG } from '@glimmer/env';

import type StoreService from 'vault/services/store';

interface ActivationFlagsResponse {
  data: {
    activated: Array<string>;
    unactivated: Array<string>;
  };
}

export default class ClientsCountsSyncRoute extends Route {
  @service declare readonly store: StoreService;

  async getActivatedFeatures() {
    try {
      const resp: ActivationFlagsResponse = await this.store
        .adapterFor('application')
        .ajax('/v1/sys/activation-flags', 'GET');
      return resp.data?.activated;
    } catch (error) {
      if (DEBUG) console.error(error); // eslint-disable-line no-console
      return [];
    }
  }

  async model() {
    return {
      activatedFeatures: await this.getActivatedFeatures(),
    };
  }
}
