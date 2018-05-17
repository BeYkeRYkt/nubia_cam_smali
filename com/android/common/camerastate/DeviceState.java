package com.android.common.camerastate;

import java.util.ArrayList;

public enum DeviceState implements C0389a {
    NOT_INITIALIZED(201),
    PREVIEW_STOPPED(202),
    IDLE(203),
    SNAPSHOT_IN_PROGRESS(204) {
        public boolean Ki(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && (functionState == FunctionState.NORMAL || functionState == FunctionState.DELAY_SHOOT || functionState == FunctionState.INTERVAL || functionState == FunctionState.QUALITY_MULTISHOOTING)) {
                return true;
            }
            return false;
        }
    },
    VIDEO_RECORDING(205) {
        public boolean Ki(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    VIDEO_RECORDING_PAUSED(206) {
        protected boolean Ki(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (deviceState == DeviceState.VIDEO_RECORDING) {
                return true;
            }
            return false;
        }
    },
    VIDEO_RECORDING_SNAPSHOT(207) {
        protected boolean Ki(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (deviceState == DeviceState.VIDEO_RECORDING) {
                return true;
            }
            return false;
        }
    };
    
    private int mValue;

    private DeviceState(int i) {
        this.mValue = -1;
        this.mValue = i;
    }

    public int JT() {
        return this.mValue;
    }

    public boolean JS(UIState uIState, DeviceState deviceState, FunctionState functionState, ArrayList arrayList) {
        if (!Ki(uIState, deviceState, functionState)) {
            return false;
        }
        return arrayList.size() != 0 ? arrayList.contains(Integer.valueOf(this.mValue)) : true;
    }

    protected boolean Ki(UIState uIState, DeviceState deviceState, FunctionState functionState) {
        return true;
    }
}
