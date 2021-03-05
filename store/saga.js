import { all, put, takeLatest } from 'redux-saga/effects';
import * as actionTypes from './actions';
import * as actionCreators from './actions.creator';

export const APP_SAGA = 'appSaga';

export function* defaultWorker({ callback }) {
  try {
    yield put(actionCreators.defaultActions());
    callback();
  } catch (err) {
    callback(err);
  }
}

function* appSaga() {
  yield all([takeLatest(actionTypes.DEFAULT_ACTION, defaultWorker)]);
}

export default {
  key: APP_SAGA,
  saga: appSaga,
};
