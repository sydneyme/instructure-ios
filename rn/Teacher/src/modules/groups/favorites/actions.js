//
// Copyright (C) 2017-present Instructure, Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, version 3 of the License.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

// @flow

import { createAction } from 'redux-actions'
import canvas from '../../../canvas-api'

export let GroupFavoritesActions = (api: CanvasApi): * => ({
  updateGroupFavorites: createAction('groups.updateFavorites', (userID: string = 'self', favorites: string[]) => {
    return {
      promise: api.updateGroupFavorites(userID, favorites),
      userID,
      favorites,
    }
  }),
  refreshGroupFavorites: createAction('groups-for-user-favorites.refresh', (userID?: string = 'self') => ({
    promise: api.refreshGroupFavorites(userID),
    userID,
    handlesError: true,
  })),
})

export default (GroupFavoritesActions(canvas): *)
