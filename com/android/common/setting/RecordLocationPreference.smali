.class public Lcom/android/common/setting/RecordLocationPreference;
.super Lcom/android/common/setting/IconListPreference;
.source "SourceFile"


# instance fields
.field private final UL:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/setting/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/RecordLocationPreference;->UL:Landroid/content/ContentResolver;

    .line 40
    return-void
.end method

.method public static YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z
    .registers 4

    .prologue
    .line 52
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    const-string/jumbo v1, "off"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public Vq()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/common/setting/RecordLocationPreference;->Yv()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/RecordLocationPreference;->UL:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "on"

    :goto_f
    return-object v0

    :cond_10
    const-string/jumbo v0, "off"

    goto :goto_f
.end method
