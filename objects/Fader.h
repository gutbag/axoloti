/**
 * Handles fading down when playing is stopped. Allows multiple samples
 * for each fade index.
 */
class Fader
{
public:
	Fader(const uint32_t aNumFadeSamples, const uint32_t aSamplesPerFadeIndex)
	: numFadeSamples(aNumFadeSamples), samplesPerFadeIndex(aSamplesPerFadeIndex)
	{
		init();
	}
	~Fader() {}

	void init()
	{
		fadeIndex = numFadeSamples - 1;
		samplesPerFadeCounter = samplesPerFadeIndex;

		LogTextMessage("Fader::init\n");
	}

	uint32_t getFadeIndex() const
	{
		return fadeIndex;
	}

	void next()
	{
		--samplesPerFadeCounter;
		if (samplesPerFadeCounter == 0) // move to the next fade index
		{
			--fadeIndex;
			samplesPerFadeCounter = samplesPerFadeIndex;
		}

		if (finished())
			LogTextMessage("Fader finished\n");
	}

	bool finished() const
	{
		return fadeIndex == 0;
	}

private:
	uint32_t numFadeSamples;
	uint32_t samplesPerFadeIndex;
	uint32_t fadeIndex;
	uint32_t samplesPerFadeCounter;
};
