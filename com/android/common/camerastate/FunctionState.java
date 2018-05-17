package com.android.common.camerastate;

import java.util.ArrayList;

public enum FunctionState implements C0389a {
    NORMAL(301),
    QUALITY_MULTISHOOTING(302) {
        public boolean Kh(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    SPEED_MULTISHOOTING(303) {
        public boolean Kh(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    INTERVAL(304) {
        public boolean Kh(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    DELAY_SHOOT(305) {
        public boolean Kh(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    SWITCHING_CAMERA(306) {
        public boolean Kh(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && ((deviceState == DeviceState.IDLE || deviceState == DeviceState.PREVIEW_STOPPED) && functionState == FunctionState.NORMAL)) {
                return true;
            }
            return false;
        }
    },
    RESTART_CAMERA(307),
    ZOOM(308);
    
    private int mValue;

    private FunctionState(int i) {
        this.mValue = i;
    }

    public int JT() {
        return this.mValue;
    }

    public boolean JS(UIState uIState, DeviceState deviceState, FunctionState functionState, ArrayList arrayList) {
        if (!Kh(uIState, deviceState, functionState)) {
            return false;
        }
        return arrayList.size() != 0 ? arrayList.contains(Integer.valueOf(this.mValue)) : true;
    }

    protected boolean Kh(UIState uIState, DeviceState deviceState, FunctionState functionState) {
        return true;
    }
}
