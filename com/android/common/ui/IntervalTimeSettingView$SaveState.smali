.class public Lcom/android/common/ui/IntervalTimeSettingView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# instance fields
.field private final oc:I

.field private final od:I


# direct methods
.method private constructor <init>(Landroid/os/Parcelable;II)V
    .registers 4

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 133
    iput p2, p0, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->oc:I

    .line 134
    iput p3, p0, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->od:I

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/android/common/ui/IntervalTimeSettingView$SaveState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public ug()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->oc:I

    return v0
.end method

.method public uh()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->od:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    iget v0, p0, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->oc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/android/common/ui/IntervalTimeSettingView$SaveState;->od:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
