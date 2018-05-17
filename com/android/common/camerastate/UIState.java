package com.android.common.camerastate;

import java.util.ArrayList;

public enum UIState implements C0389a {
    NORMAL(100),
    HIGH_SETTING_POPUP(101) {
        public boolean JU(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    SETTING(102) {
        public boolean JU(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    TOPBAR_SETTING_POPUP(103) {
        public boolean JU(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    GRID_EFFECT(104) {
        public boolean JU(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if (uIState == UIState.NORMAL && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    },
    CAMERA_FAMILY(105) {
        public boolean JU(UIState uIState, DeviceState deviceState, FunctionState functionState) {
            if ((uIState == UIState.NORMAL || uIState == Ir) && deviceState == DeviceState.IDLE && functionState == FunctionState.NORMAL) {
                return true;
            }
            return false;
        }
    };
    
    private int mValue;

    private UIState(int i) {
        this.mValue = -1;
        this.mValue = i;
    }

    public int JT() {
        return this.mValue;
    }

    public boolean JS(UIState uIState, DeviceState deviceState, FunctionState functionState, ArrayList arrayList) {
        if (!JU(uIState, deviceState, functionState)) {
            return false;
        }
        return arrayList.size() != 0 ? arrayList.contains(Integer.valueOf(this.mValue)) : true;
    }

    protected boolean JU(UIState uIState, DeviceState deviceState, FunctionState functionState) {
        return true;
    }
}
