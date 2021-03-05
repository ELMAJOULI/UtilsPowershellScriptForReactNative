import produce from 'immer';
import * as actionTypes from './actions';

export const APP_REDUCER = 'appReducer';

export const initialState = {
  defaultProp: null,
};

const appReducer = (state = initialState, { type, payload }) =>
  produce(state, (draft) => {
    switch (type) {
      case actionTypes.DEFAULT_ACTION: {
        draft.defaultProp = 'default';
        break;
      }
    }
  });

export default {
  key: APP_REDUCER,
  reducer: appReducer,
};
