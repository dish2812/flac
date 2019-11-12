#include "private/cpu.h"

#ifndef FLAC__INTEGER_ONLY_LIBRARY
#ifndef FLAC__NO_ASM
#if defined FLAC__CPU_AARCH64 && FLAC__HAS_NEONINTRIN
#include "private/lpc.h"
#include "FLAC/assert.h"
#include "FLAC/format.h"

void FLAC__lpc_compute_autocorrelation_intrin_neon(const FLAC__real data[], uint32_t data_len, uint32_t lag, FLAC__real autoc[])
{
    printf("INSIDE INTRIN NEON");
    /*
     * TEST WITH C CODE TO SEE IF DEFINES WORK
	 */
    FLAC__real d;
    uint32_t sample, coeff;
    const uint32_t limit = data_len - lag;

    FLAC__ASSERT(lag > 0);
    FLAC__ASSERT(lag <= data_len);

    for (coeff = 0; coeff < lag; coeff++)
        autoc[coeff] = 0.0;
    for (sample = 0; sample <= limit; sample++)
    {
        d = data[sample];
        for (coeff = 0; coeff < lag; coeff++)
            autoc[coeff] += d * data[sample + coeff];
    }
    for (; sample < data_len; sample++)
    {
        d = data[sample];
        for (coeff = 0; coeff < data_len - sample; coeff++)
            autoc[coeff] += d * data[sample + coeff];
    }
}

#endif /* FLAC__CPU_AARCH64 && FLAC__HAS_ARCH64INTRIN */
#endif /* FLAC__NO_ASM */
#endif /* FLAC__INTEGER_ONLY_LIBRARY */
