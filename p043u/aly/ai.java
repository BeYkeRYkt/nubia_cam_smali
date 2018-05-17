package p043u.aly;

import org.json.JSONArray;

public class ai extends bi {
    public ai(String str) {
        cbX(new JSONArray(str));
    }

    private void cbX(JSONArray jSONArray) {
        m873a(jSONArray.getString(0));
        m872a((long) jSONArray.getInt(1));
    }
}
